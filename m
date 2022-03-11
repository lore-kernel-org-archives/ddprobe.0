Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97D7E33E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647012384;
	h=To:Subject:From:Message-Id:Date;
	bh=ZRx1fTUhSaYv02tc3r7HWw6zbH+qpzjGcs/xVaVp9cg=;
	b=ZwEVoMTKvdEwLZd199/hli/Cwo0xILka+ue8POod4v9EnDO41W6XidDGlstcSNlA
	8d3qdme/tcB0eL65VgtEWe0BHRh+yBWBg82jioRKIFndzMuxBStQEMs2fqIjD3dBfi5
	X+ZeT0SVUA8hODDxmwfdfJ9iRGjZUMycODLtjChw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647012384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZRx1fTUhSaYv02tc3r7HWw6zbH+qpzjGcs/xVaVp9cg=;
	b=ScPjxeSjlgXkctPdlhwTwlPKVjxHFVVmjbxvd01zD+obFKLbjIJhZmyCunNnNMe/
	DFiv6WlZqwlPh3T4bOtsjJKDcMjNknPdf1ugCFBGpoJ7sWpXLwjFhR4X2GcBavOAa2l
	T+sXI+7AQxrtp3stHDwPfi7BZvqIY5zyqVEz5R1Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f79968ff7-8b899af1-dd0a-4c14-9db1-bf1f635008eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6fe85977be67ac7557d77acffdbee81d1df4a6e1802abca4890ed1bd88ddf1f0
Date: Fri, 11 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647012384
