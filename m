Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97304688
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654458239;
	h=To:Subject:From:Message-Id:Date;
	bh=hM5xUdYy+2GsxqceE6o3jWPWPElBgUNlSHbp+i2vIQg=;
	b=g3CR9fIlVra7mlnbZ0sQx9/hmfLsthH8OLvayJ1ryfXlrne0ZAhaT3NFTpcezTlG
	1lLHkpbUMJmN0AuKOcQ9g/k9OtTNjw3hfUr8a8MJSDYLfIgpM90UigSaxXCtnL/XRJS
	0nzkxgfI3aep3kceoRCw1i7pBkbiKhbxztoZXMvM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654458239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hM5xUdYy+2GsxqceE6o3jWPWPElBgUNlSHbp+i2vIQg=;
	b=CFLPZY0mfpmzuS5ufdIP4idt4b5lMWn96s91WDtGMt6cIKu4dQyFjtO4WlECPHpc
	TgnJrGXMI6ZhMPcBWEie4V8VTT4IYQBstkXsUytCJX9FXt046zzwvfoWfRgOGLTFLLE
	cVSjA7yOW+fTUs2UA2H2Kuf9/lukme6U4dgKkHTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181356548f2-c7e4e7be-c965-4c48-a5e6-160ccff9b4f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0f3b8d67af7457f7a16836ee09ae798ff6b60f305f977dc0106faa64cbb87cd
Date: Sun, 5 Jun 2022 19:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654458239
