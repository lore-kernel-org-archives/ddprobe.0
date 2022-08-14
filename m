Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F87F323D
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660518052;
	h=To:Subject:From:Message-Id:Date;
	bh=yKda/WaAAj6WNs6oUpDIhbPwTFEmqV6dRQ+zbaxkLT0=;
	b=icajdmfORVui5bA6QnMUX/0a23Sle1XSWicrvnFcFhCexCQwOdhCpv0EFndaXvgv
	ZTX8IjaR6cEruv7lc2EzPUeimc6uktIjs8dvnSSQ42zHCPSJWO4nTwaTGhSTyoojwkg
	GPyEsCIfN/aE85Bgjhb0tN4Jk1SI2Ia7bv//LWdA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660518052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yKda/WaAAj6WNs6oUpDIhbPwTFEmqV6dRQ+zbaxkLT0=;
	b=MVFG1KCj1xF1I5RSs4PQvsPC/BQC7aN1Bbvo1PUn7ana0GFHIpq0oVdRmbXFfdvy
	3lMdxIT+mGfmOtF7TNhEoSSJPMSn1VbS3GuuxThsf1FnystLgeD3oSC/LALuMDRBXnX
	AGkfYmsjcDdAXAOLTAOSgqZa8F6Y0smfGTul6JM4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829e96b309-6ec595df-7a55-4056-8a26-5be62e40da3a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e55b7158f5f466e9b5e3ee77e7674afbd0f09a7542fdfc22c1bb0c29da8b101a
Date: Sun, 14 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660518052
