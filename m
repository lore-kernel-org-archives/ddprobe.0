Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E11A36D
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 03:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657942012;
	h=To:Subject:From:Message-Id:Date;
	bh=Sl58AcT8z6ijaTAqYvjvGj93SAhV3s1OSSs+uGo79fQ=;
	b=YUtrE8JUUNSzlb4ei/GI2SCitFzhaFNmH7pUWfJOyQ1ABLJESRsWAad3tLuCNdX1
	6GxwSWN3cXVqxxsfcgN/ib/56Qg+wJJpjyoGKeS1De17k8Ypshoqp3qSDQizlwVKIaC
	POZ3wVWdZKQiedhLkci74ryXX0Mg+McFVCyRtvYk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657942012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sl58AcT8z6ijaTAqYvjvGj93SAhV3s1OSSs+uGo79fQ=;
	b=WlWLUdsM9NGv1sJBfU1SQH6ZtajcUmdey8btYxXPilFDoMpBsLrnp5+mdM+YKw0V
	VTU1i1Q36bzv+2x+yT7VJA0Oqi8tvxCxW6VChIDr80NWQbEWrZKjQPPSudrKhly+eOj
	d9V55QruD7NoIVLTPZqKAfXhPmmK99PnlWtn9SDg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182050b716a-861ebb7e-c581-4d60-8e6f-fa035004f261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7896a2e23309d4a33134f38aeffbfec2967be500c144562a06f73d32c4298d4a
Date: Sat, 16 Jul 2022 03:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657942012
