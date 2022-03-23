Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78711ECD
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 04:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648009584;
	h=To:Subject:From:Message-Id:Date;
	bh=npsb1l9J/hBLutK3lVB086oixqDTFcg4hETaHrTCCTs=;
	b=cwoUHaQOF4SQAfSj5tsZS8twAjrG0fGTOS8402FsMXESBTqkAp+TYGGWxdKj0NrD
	E3PaqUA/uCDxeuPlnvJfudADCbtRDx1Rqz6JFOTDVw2T5HCsFmBWqYQ00QemqglQ+gT
	Od6kNGnqAhbl580gkmSW33zEljji2hE2aHUtw98c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648009584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=npsb1l9J/hBLutK3lVB086oixqDTFcg4hETaHrTCCTs=;
	b=DeSTk7RRoaytY5OfS+doDMBzCOT5G9S7nsX5JZECDGQDiQDJ6ySibtssVTtVtGHw
	Zzgjk98pk2xfqV0HwWylQAai1GPfxlBVOnqKNA3OhNEUjgBXSK+Q1daE50hMfhs8lJG
	R3kgqm2Gc4OoO4Xi72wQ9yj/LTRF0EYphhPwDQ9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb506a07e-71d9dc87-733d-4a61-9150-f9c2153a420e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 527109901ffa8d6d44dd199da53ffe5e13c8f2807bb4f1cd5e35a51eeda2c5e7
Date: Wed, 23 Mar 2022 04:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648009584
