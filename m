Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17D87258EC1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755647994; cv=none; b=qnflc6E8bLtHH4AtVsc6WaPqqyq95lhGoAAGz4YSHC5fzlxPqqA+XzAjp/zd7SzMtXfyYRbOXYtmlGdt8OnkfuMbJbGssooVt5TqMPYhG7j5TOsG8AChVJZiGaLyxNIPFOD9n7jFJp6sJPt1AUF/j0sMn5KcRrEZwGBwWqnOhUk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755647994; c=relaxed/simple;
	bh=iLnM+k2L9cFS8ZkPdulICmfUXuQ1bi6pTmac2zlWHDE=;
	h=To:Subject:From:Message-Id:Date; b=h+pPcMONmsu3GizBsm+LTMJtK9m+5nccXn7Mpl2FJeT+/OlnnWzqQGM1S/SVuC0eDjqRmUgTep+HTEWNpx0VYjPxL42Fn88GyxsQSQjxhgdri/F8etqzM+94mT68KYvMh11qAHfNwn/zz2S3MpbcYRtKS+J0kNEFeSt4MkXAc5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvveCusE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvveCusE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F395C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755647993;
	bh=iLnM+k2L9cFS8ZkPdulICmfUXuQ1bi6pTmac2zlWHDE=;
	h=To:Subject:From:Date:From;
	b=mvveCusEVb2FGDJuOqtoshNqwk1/f8KtJ3xvys/SBafv23a8xGTa7b6s9j//dY17z
	 0qToa8X4/EVt/GquJnwZRUcTgnl1MY8Lwi4Mjvkm5+cgDLQNGAX/tMIsxdpwKG7sPM
	 t0WiwlSKLJVpyjpTU1ZNBpxa4X8z0Wu0gz5I1yANorsIhFS3vW6pL9LlTFttd7T7mz
	 gRcsKtp7W5guZSZzTDPsMlWDo8p2GQRctFhXq6E/fdfuh8cb/mEPjIuxkD1Lp/EGI/
	 5/qB2fE4BQUQn689gypRJhmeT5GdQkCmFAcqndqTo/yJoL4PQr478PdKoI8dVRVtH1
	 v8RQHqTsbA62w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1EECA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175564799357.21069.16349771552229510994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bc88bc155a22c0d8d143c17cc46ca2414a3b473b068dae978899bd49ceb2e96
Date: Tue, 19 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755647993
