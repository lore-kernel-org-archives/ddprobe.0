Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EA77E0
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658824012;
	h=To:Subject:From:Message-Id:Date;
	bh=4b9L+sTlxDcegX2O4ev9ab2aaC6y7yAXE7fp1vPBZ8I=;
	b=ZurzfCb3cqcMgJyJ+EH5nLiOiYjAaBbbZn1pb3+iS83fRm6lsu44pjpuux2e/OO0
	0fF4MNbJt1VdwgTX/RoWj0+f5jfB5GKAhMhL08M++K+Ohot2PSaT64lM4Bl2iy+XonI
	tZPOj2DHoNK40W9lHWjkQrQvWg4qOwnSJR8KY8Wo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658824012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4b9L+sTlxDcegX2O4ev9ab2aaC6y7yAXE7fp1vPBZ8I=;
	b=eGt30bJ2T8tXnnfshltJgozfmxIZzVGe3yuFCudsrEqnreFqoeEFZ1WmK1bvof9h
	JXoyWdkzyHVPG9enhUXiaqcQRV5pvs9TaaHENYR8/EjD6007f+ojy7jAflXwTcMeg4/
	/osb05JX4qJ/ulMeAZw04tfmWECokwtyRZrK5rCI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182399db219-895a8b52-d348-4053-a3de-e313d93778d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 968ad45e84830a85ce2daeb79924845bbe07507b0b8a5d0a57706d30af681031
Date: Tue, 26 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658824012
