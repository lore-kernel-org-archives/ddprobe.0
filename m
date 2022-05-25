Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF65802
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 00:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653440339;
	h=To:Subject:From:Message-Id:Date;
	bh=JtBffPB84u5QAH47iB38qgsnBaI1jwpit5gW3rbbe+Q=;
	b=OWg5GGurCvo4g1MUkovP8aogglYhIWE7i7mRy9PWA6pOxZg5mxoesCb/ljZhWBuZ
	n730Ke+NH92NNRZ6XM1lydG7cP6KBknTkj/v6lya/d7NoLBRV2tdHM8gDqsKIDDKIP3
	ByVWbZHcdnMCkXE/zP1ymNeEYWBPRo8fW5aAv+G0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653440339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JtBffPB84u5QAH47iB38qgsnBaI1jwpit5gW3rbbe+Q=;
	b=Sh6pmMyvo5CzKgY9tYD2E/jOpNhhwrP2CW/7LTIcWUBIG/vSO8s0P68qolBL2+7n
	WcgbQqkMfKM1QjvvgHIkcotL31VF/PBz9LZUe/Fjfo2lNMu65EJAEQFceJ+aM+1xj85
	iRkaU2k/tEp5dDOVmYBHZ9Ug7UzlfL59mEaj89mY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f8b95d66-4421e72d-3967-42c2-9930-7129e031cca6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aca12b0f28f4b510de9994f89785d1260dadcc7daccd2e2f0e86f44affedc848
Date: Wed, 25 May 2022 00:58:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653440339
