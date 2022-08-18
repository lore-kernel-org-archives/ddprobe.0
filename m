Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B6115A7
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660833652;
	h=To:Subject:From:Message-Id:Date;
	bh=870syjpbWnpaRflEZISz1tYUiomqMsKWNJ+fxGcsfyU=;
	b=YfwiiHwwPgusinjMSezRsnPtnzd1esxvuf7SgW05mzKTFL3xLYXtxqcQ2g/KeLLY
	6zBR+x/Kwfb+cen3a+GPM7BdiMAspxVntMKF+U+OaP/1S7NnyaDK33q8n+zWWMPxHCK
	/rS8Vcol7MME937dXDWs49QhrqCnew60hi8ccpVk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660833652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=870syjpbWnpaRflEZISz1tYUiomqMsKWNJ+fxGcsfyU=;
	b=VJa0KtFlsKD5d237LxpH6Gc55md7O1C5UqpjXwTKDXdEAjqSXFmETE2c5Ndm2E/b
	XgJyWnY5PpQNrUVHwqTQzAqHdK/lGIfMOiJsPAL+7Uf4uv1h0pmOKjgWiR7RlO/hZKO
	gXN5oa4t38fCbpuPnhzgr6cotY697dgS0r92+1mw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b1665f8f-a2f74b0a-3ee1-4cb2-85a4-8d343baf46bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 473e4d05178e3c25f3a004ded50560e535b81de7fc061d56660cc1723ef0a693
Date: Thu, 18 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660833652
