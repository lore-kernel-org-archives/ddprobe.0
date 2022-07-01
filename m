Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AA81860
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656710812;
	h=To:Subject:From:Message-Id:Date;
	bh=MSI/+h9+r9vk3s+4teK18c+eGlsyl1/P6xLee2SIFAc=;
	b=F5MVOOPRp10QJufatooS3/ULHM6bLBOnbLkdGZnhj+Lk9I+3da/5fzU+AKFykJA4
	xtwKtJ21TKOevuA/vB4l/yJ/VxtT0CzRSHzPtniA/+O3eRxYjL8kqaG35lhmKW+j6d9
	mqL+ygLGihfFg0XswD+jgtwUdi6SkcRQLHLRIDRQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656710812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSI/+h9+r9vk3s+4teK18c+eGlsyl1/P6xLee2SIFAc=;
	b=IOaRgVhyfuVDXHFemQYbH+3dv8AenX+TVGD01Mf4uInbj2k91F/XOEo77jM2eMxC
	Rt/LIj0wNlWihLu9ONA876jaVsqNRrx+YKytUcaiTFfJNYz/T059HUmzwmI6c4/w4Yo
	FamAEjGTmnVcr/DcC2WXabTSCH9qNGQhHwTkA0go=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bba8d2d7-bfb2b1a8-2dc0-4a7b-972e-27c6d059975c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48a2e9bc28d35f4f7070cd24bdbda5f3b749923462cfee4cdde8b7f0850365ca
Date: Fri, 1 Jul 2022 21:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656710812
