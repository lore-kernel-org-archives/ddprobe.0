Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D26DA14389F
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733211953; cv=none; b=NvWyJPEbkaWB09WHBY6nnVLm8lnU0UAK1Dw/o29Nyh3XV278JbpopbJhSNRkPD0MwuScdkTShe1KZElMcq8XXgoK1mz4V+SqPvDG8sHCGRKzLxThLmyQoUFEi7ShnyeIguifP8zLi+6IN5oQQY92U9Iaruz0QJe0PUF0EyLx8KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733211953; c=relaxed/simple;
	bh=GEd0Yi5aB2sqU5iFahBg41jLfcl/XSHx4nb+GuvpJBI=;
	h=To:Subject:From:Message-Id:Date; b=o0syn/a0/d0Dj7MWDE7CDLt8i1cwLtAZWyz3iOcBsrJifxPZa/PI10xjgxVGhJ0PmzIi6X2Yxpd8n6p6ZWSRsOfm/EZ/ChLpm5E3vIump8G9Ba8vhVU5PqBMVf1EXxpjiEyTp3s54pVYySmvj4G8ow1YwbES0LVc3sdlhEyFs3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V7q6jyfm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V7q6jyfm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B392CC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733211953;
	bh=GEd0Yi5aB2sqU5iFahBg41jLfcl/XSHx4nb+GuvpJBI=;
	h=To:Subject:From:Date:From;
	b=V7q6jyfmLbvLCRFCHwJOz1WnF0+PSetkRVhydmjy/2zf/iXtuN+6sdovIHgksB6Dm
	 r/+bZua7er+J8kQjpxssLsTYcRH+fXnakI1/aDyxoAoHUFzO3BRDosi55e1VNWJudR
	 qnJrU1ZNmFNdji4ho3dQisFe5ZoW1cpQ1T1oWKTWa8OWVz2wdHoZNYAtIyzsW6VGH4
	 QY8Pr3POYaKv3x8cyfIfuxqhoADljXb/N+gl5wWYTm8XuvKvwcHwx3eYhWZprXid1w
	 KRJycIRpjKPTkOT2XhljjSEMGU4Dl7IKnUWH9K6CvPWAgHL/aaw1q1yk3FF1G9i6lP
	 rLlybNFOZkqVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DCDE6C611
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173321195360.7189.1187744907990815585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd91f7e63e46105ee04475c90e223125343b60912f19860112a18b874e19ed77
Date: Tue, 03 Dec 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733211953
