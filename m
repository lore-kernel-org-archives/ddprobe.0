Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D370E20EA
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 03:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650079918;
	h=To:Subject:From:Message-Id:Date;
	bh=ZHRKuS/Hdu+focVIHDlWPDafosHAvDnlitW82r462QU=;
	b=UvLp3bDSJudytItVzc4BGzsdlmXp+tA50FRz0af88NJVUeVllIbFIpSUxOLga5eN
	EvDjFC4kQt9lHMjbIujQpMl+2nV4+85BRd5XZe4PylWBwwh3VlpDLUIT9m/zHSKTKra
	37nw/8Y25BY+WwjMV7HiRAGBd1o8UFJMFYKJX4mk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650079918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZHRKuS/Hdu+focVIHDlWPDafosHAvDnlitW82r462QU=;
	b=LLCesJ3kJd9tAgLdDS4xL/cUJAeavwbeUr147RwIihA/K8iAR2Sxw4ezRVZv0Bvr
	ozAph+gFBeScBnidk551vLYG3lY99YQg+ekZjyn9Te/Sl9LR2L/BPR2XBc+XZpEvIoQ
	nHknsJteiTG5AYTd/d7BypC0FK5m/UGepxWpWNNc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180306d68d8-3c34fbd9-2d71-4225-9e84-8d696fa89042-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 097da1fa6859326158174774f9306e94b022597f2b14c116dbb0009776d84fc0
Date: Sat, 16 Apr 2022 03:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650079918
