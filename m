Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B80B5386
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647677784;
	h=To:Subject:From:Message-Id:Date;
	bh=YlkgFkzNx3CPHOozh9F7ia07DE5v3LC/6XR1dHN3U6c=;
	b=gU1vQowQiuRHmEJKflIdxkks6HAJsf4V5KB9CRlYLC2OEyDe7gh4Y2A7iKi2ptmG
	/uokf2/MgAzoS/eLnQMgPuo8hcpgDB4txZDqUbrlRDAKM3G5VII80ERITNnOfN1kE2+
	K7gQIeCbsk7J3wgwGsEw2upFbF0kmN9u+GSsvQJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647677784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YlkgFkzNx3CPHOozh9F7ia07DE5v3LC/6XR1dHN3U6c=;
	b=jQl2kFoKP/aKWAJGP2de5S8SLWNHIHoeeON0lKegSo+HNA4ok8qRaEoJ66QDyjv4
	jCUotRihvbzNPLXXKqNhZ4J0f+Z7+qrCwgP0nLUXRTxZib+wDpNa0NvD6J2VWlo34jm
	ktwsaoJZ0P4CRAqpkEOEmPRNcBlSynb5U1nL0HRw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa13fc2a2-ef395b8b-ebc7-4aa7-a28e-aba68b0775c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba152e71bf60b79661f0cc6c0eef2ea968ff089f2b9dfc0bd814321bdf728f01
Date: Sat, 19 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647677784
