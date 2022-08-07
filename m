Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DA7933F7
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659901852;
	h=To:Subject:From:Message-Id:Date;
	bh=JyCdjz37kceF81XqUxsHO3njDrguCepPydVgr5mIhG4=;
	b=QhnB00bQ8FnQDvDdXK8cP54MDRahL23iDYb61H1cyHwJosSr4uUeAGBv1shfxaSD
	v+qvWfmlqQ7+P1ODhbzl+UoUtHqziKl6h5kPy47Dwc66Fr3eWn9vcXXSbLEaaZk4kL0
	u+3Gp5dfQjyZTbFTNBhwt6yunfYsOFbSySdLuZ9w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659901852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JyCdjz37kceF81XqUxsHO3njDrguCepPydVgr5mIhG4=;
	b=USty2ISsJU6RWixrvIRMArNBbjxEUXC9VMfk1No1rKE01KgN7dJNrSGjg/1KtmY2
	oj3jcky1bigNWmpq6Fp+GPzp65FLW88jAdOtIuRMgkJDr+esZ6wOvCrnFXBAaC0HFdk
	nZpW658dMh6l8jXFT+TW2gVzQyL5EBdRab4+3Ync=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018279dc3bbf-ea5df37a-8031-488b-a686-c4020f1de72b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89a36fcc6d5aacaaadbbb445b7d5ca9113de8b8b4626ecb81a7223f0f0465154
Date: Sun, 7 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659901852
