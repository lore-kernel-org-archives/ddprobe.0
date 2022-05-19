Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD9523A5
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 04:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652933579;
	h=To:Subject:From:Message-Id:Date;
	bh=uf0u+nWyTo8wKziMbR/z9UFuT7zMlefg1qT2CwvCkag=;
	b=UXBpFhmu3yFyZy059/DeJkjK8DQd3Z6HexeW0cGR+zDxF6lnaD42vaggxH4+Ea6B
	fWkq6pt2QF4+2SG4E4uWuSgBqY2tKF9w6E0EKf+1fZ0Ba6ExrCqoxdejz7oRBQZ5GjJ
	E3AEri9U2osTOE3Yj+RX3Ef/Kud6OW6q/Z/rK1ZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652933579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uf0u+nWyTo8wKziMbR/z9UFuT7zMlefg1qT2CwvCkag=;
	b=P2FazGoupPYysAlT2Iz1gEAKiEj+yaYeV6Lqie4l2kojaL2B8Uh0rZK3WFuoiXUE
	awpVid4nBy999LjAXBCTt4cHtdh9qh7bTRXyBoWq2wsYij9Sf6H6yWUfhd9cNqrjGE+
	Z83DldMVA2PHvb6hJReVHWrjxwpzLUInpfkZUv5Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180da84d22f-092d6c77-0552-4b9f-88fa-4698224c73b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 444161e2ea801dbfb6e16aa2c79e593f804249441613314344683fb6e0716189
Date: Thu, 19 May 2022 04:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652933579
