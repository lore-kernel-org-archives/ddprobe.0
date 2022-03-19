Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5743B539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 09:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647680784;
	h=To:Subject:From:Message-Id:Date;
	bh=MTLDW5wjc0ylZxk1oPQ45JFkqrbliYFFDc8DWLlki74=;
	b=a2BzQlvIvA3lwgBLAZEaq55JckXmnseuMCbPIaj3krv9D+4CKdV1ITW1UEzTPKZc
	N4HKYx/AAL8Ia1ceTm+zM5TWJvXIL93TkZBWU0dR22ziraayNdiXsSqM5/YJ4KRl0z9
	HCTGjkEkmDaqZ78RNr9KleZ7nvvMuZDi/htRGzSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647680784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MTLDW5wjc0ylZxk1oPQ45JFkqrbliYFFDc8DWLlki74=;
	b=BnseEA9AXoludI6BfszBYxi2rKIZ/Wzf/M9tfgtkpSrYkJPOn6+uhDxzI/Oakyqc
	iE8oGmcYR0PE0P3zOePS5Tn7vfbMZhwVO16Wn4zMfknZ/CyVeodoFE6myjzyPtAFdNB
	f9dD7K8ceyuUMiDj6Jv5GkrkVsuzcMoPZpxy8/8s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa16d8960-bf71b13a-c8e4-4b66-a478-cec9b1576e6b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a7c444c50ba9b49df83d02312c4ed06de6e4eb75cec19f0dce6c8142e47e9bf2
Date: Sat, 19 Mar 2022 09:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647680784
