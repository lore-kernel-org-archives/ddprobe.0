Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F42B7F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 22:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659480652;
	h=To:Subject:From:Message-Id:Date;
	bh=hKCoUvvOpxioOZyc17g+5xncgMYXcEE8SKsUmCJ9D5M=;
	b=ehIl/E4/kYjKTWQMFS6fiAzHx/gEE0+UVUYP4WgPi3l+3XoC/06OYNWbWqbwHAFy
	pCRWK57HxYacQpKIMusFs6iup2j9/dgfEPTm1F6sJ8PAajiVkcLAOaSdV3RHCVCg5TN
	Pt/YQcdnGHkgJiDILu4gcTr5ibXvom35vHzjztJA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659480652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hKCoUvvOpxioOZyc17g+5xncgMYXcEE8SKsUmCJ9D5M=;
	b=B/VPACnBGg4yXXcDCzp+CmNqXDPcfVAD+JuNIpRtJkjJbWZoODHwXNtggPlwWxyN
	hXSle4pL3NLVlj7ms14n8Ud5zuOemu8VLXzzhoY3emGAMIy/0H6sX34fsEXTJqb72he
	kSqYmDVPRy1dVV7/fWCkkWGXIl4YJ3tiFXwtlvXI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018260c13b0c-2eff7334-deaa-47ad-b7e0-dde3e4e44410-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc654f26b2c7bb388a7471d5755a874da81154c3ea781d0e184fbf2e143432ab
Date: Tue, 2 Aug 2022 22:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659480652
