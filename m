Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99A2B7B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645371685;
	h=To:Subject:From:Message-Id:Date;
	bh=mwYOY19qI9pNeHpEchk6huvGOcEBTrnbq3mI5NEPhoo=;
	b=VLqOMVRIWT6C6dYpntwiGabJpJsc5GyHsR1SEe7TWj0h1jfDErtDTQKSTqIXTX8k
	b6/08AfwLhlDl0u2lq426o3f+jAGIP3Ujo+EwfAqDn8STbRgMFULTmQM9sjitWR30ms
	74pmB9Iyc+fYkMssMDBjpuPNSfApMpOC9qxFY+uA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645371685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mwYOY19qI9pNeHpEchk6huvGOcEBTrnbq3mI5NEPhoo=;
	b=HD0jW6HWzRI1+5Qxpc9V2uqqM+6YPHaHzu5n6esn+c6fchwbmzLseACxbgaPniAV
	Q7lk17gPFmMaQ5vb/6fzc29kKvoV7VOvzgRR4APMBGUC39gs5ymD9H4kKB791c/s68V
	OBTz4M7SFNh71dTykWYGMI3Hqllf8a5et1dGozY8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17cb77b3-7ca65c1c-e640-4b09-ad5f-d9dc14c6c097-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ac3927e4394f366a0ea9c5d5c736426893de7def7cdcfcadc00ba55e5e3ab4c
Date: Sun, 20 Feb 2022 15:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645371684
