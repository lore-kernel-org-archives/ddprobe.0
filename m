Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 264402206A4
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736439954; cv=none; b=cAP+2Oo23gWySfWVT2rzZwACqp7W1XNjmulzrE58CyuO9zguZGM84VvsRtR56KGecO1sYQBx17+W5DMXAGFbqp9Lv+HLlevJ6mL7H1QaehePA2rTxBcn7Lnbq8s3j+RFM37H7eH/o/BkNz8rMj3vk1Lvp9lz+Pt7+U9IPW9tq7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736439954; c=relaxed/simple;
	bh=reb6rqFatQ2FEhonrM8yUmUPXrh7RdnthljW+6i6pq8=;
	h=To:Subject:From:Message-Id:Date; b=GeLjF8xUCHvg/4zAwpNHd/wKliON/y5ugvJH1LyZe8BACh/7D6jE1Z39H1kD9ln7xjnrZxdYIQk2+e8Tio94jWG/oHvJdJYi2X4GgNLQRWCcgbWa4C/RvZmCO8vlKAiXQWdkPW5D9pg/Fk4TuTPk9gIlxRpo/Q1mraDTiaHJ4Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tYZdZUpo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tYZdZUpo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDA1C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736439953;
	bh=reb6rqFatQ2FEhonrM8yUmUPXrh7RdnthljW+6i6pq8=;
	h=To:Subject:From:Date:From;
	b=tYZdZUpotMUU8IlUhr2pjTNAg4FjRSaCKAgtTW/qe3wapE4w205fmGv4GpNvwhl8F
	 V66v0Ydq19mpaW2T9s8Ew8La+4a50bdjqi0PPYiofhf28Ncn62962DcBZo9Iwqln/l
	 9ZsFc3EQ/7KTHwdP0ljUuwE4HkQoq1wrJ3bOLkxvVrb6kFJEHRpvGiGzcvQCvq9rqv
	 cE9J48gb0oyS0ObsTI/7k1WNQ6xpEYVOg9BgJE5ocJqzpktziGOTXQgWDjzsnI/wxk
	 2agX0cM8wXDr4nwPjw/Uq3blxDA2ThwKJhHEzqxj2LkXLJ5DPUqU0NBEOXvrEEB6g3
	 gUOJVTH8RQi2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F57E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643995358.23157.5680377127839198106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d4bba44fa3f51f024baf32e07e640ecdd770068599746befd78fdfa56fc60c
Date: Thu, 09 Jan 2025 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736439953
