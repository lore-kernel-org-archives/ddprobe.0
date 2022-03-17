Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 693B42F22
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647491485;
	h=To:Subject:From:Message-Id:Date;
	bh=Guw8g77yUQjOAyhoWHErkzRK+NLM+zobKFVKQloEQoI=;
	b=GGTnzjqVLZvlnNddQxr/p67s0Uc9YynlrmLWnhQYEsTyvJ5xRl1ucgoJuVzhrjaG
	ZZgQhes7LZNA9Ho1bnhFPe+t82b4YUIFJ0aWBkMq0cTC495AADzmgR3FbcASIs0XbMv
	XmoDEya2VuWnSqL8Bd93wCNhjew1ikgymPottiZc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647491485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Guw8g77yUQjOAyhoWHErkzRK+NLM+zobKFVKQloEQoI=;
	b=TjIwdGfhu1Jqo03cGBuU/w0c0sSlAX9W3Jz9tTaUrt8ClJ178FrqN6EwxBcNPqWN
	jenVsdEgtOYKGUIUKply91N+ztATUJIVfgiC/mlFVRTtlTsBmhfSKddl/TkEvHF7fJv
	F1TM3RVHYIFjKyRCqMhCPsXt2yhelRgqZ9z1rKn8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96250cb1-d3e3072e-0e4a-456a-8103-9dda29695636-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a4d8da9523da3ab6a1c3f056505f0bba387a87c1af0dabbd2d6501ffea50cf5
Date: Thu, 17 Mar 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647491484
