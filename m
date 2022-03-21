Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BA82C9E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647853885;
	h=To:Subject:From:Message-Id:Date;
	bh=Av3lKXPpyiwZoT0sDNcWL4RSucjKzNZ8xfqtGMdUErQ=;
	b=lKgouFISoPov4i/9+vKnWt2LVAGyJZBMPt9NaCz/I5ZEJ7HpbIQGfE3L/cI+VnC0
	Lo+xfDUlc/1Ym63TNka1p1d0NILmsZpSNl9c4GFRLO01Y67QLPPVMEGz0ABOWhB3oyo
	/mGcwSJwUJ3CwCiQn0znfjEOvApFDIzjJucIq1qE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647853885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Av3lKXPpyiwZoT0sDNcWL4RSucjKzNZ8xfqtGMdUErQ=;
	b=j2I5LK0Osmt2DbY/3XNzNm6KplPuTBTKRcm3w0CVmgWTCzdvIt4W+ftkaDAVU0tU
	mGm4O53atI6kqd5++fVH9kpr2Q/J9zlhUZd8DK8o9Pt1AgSDkR+JjARQS10S+KmHy0K
	tDIm7et05EEpTiO0AyTFdoxEyeZxDNzyd6bL0IZc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fabbed545-753ccb9b-2b08-4f9d-a15f-b4524aad4f07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53999af056f251952dc7e779bb2d4f4f613dc16912e5edc0e8a89c52a5e8b799
Date: Mon, 21 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647853884
