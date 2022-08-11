Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54C772CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660203652;
	h=To:Subject:From:Message-Id:Date;
	bh=nlNDAD0LPDsELNZpP/yAgEYtH7aDIMIFAIdtfPA3vFY=;
	b=PiQLDa9B8S4fRFSB5CRhcBnF1oHdOy8/DSXO2js5gy6KscSYu82LOCMbqvEyYPue
	BEqc1dyuLo4SmGFdX0tkc8n1+RDq7bDbggDFSUz0L7hdgx97mp8frzwzcl3l5ngaSYx
	lb0+wgfnZkevHrxJydy6GMT4BF/N2lFz++1yaR+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660203652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nlNDAD0LPDsELNZpP/yAgEYtH7aDIMIFAIdtfPA3vFY=;
	b=XQ0DEz1Jg7gKkB4stvB43XV4AkijBe3Y1v0TlkjlTlBMhX1zKk2Q3/JHK8Ce3GrC
	Vm9/yi+bboxgDjj4KNy/u0y75EnwgfQEI9dka0lMHoBsBh3g6pn8kQg+pK4COoLHolD
	tkYYijUJKXIR1ThTOgYP/351p1ZEYMHyiqRzs0UM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828bd955e2-5551d811-95d1-431b-bb3f-e8429ba701fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bfb3ee4c2bdf536c8867118171a0f9eadc696e3550bce352848c8d6f241b9343
Date: Thu, 11 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660203652
