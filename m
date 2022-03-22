Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 651817A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647934584;
	h=To:Subject:From:Message-Id:Date;
	bh=p62HaaJfonoYZw3saTrCAuKjQSUjWO5SgyC3PQ+HNTE=;
	b=JFRUjEwJwk7vZlspGqgdzUyfSiJoZc1AZjcV/xfb020PpXl+1F4TKdikMaWdHkJk
	tNuOgOGAGuOuIlZH6wpvCXfwhflaVjQKuBSCWpFTIxLNClkzb0S0AhoYSQ3UfWmXbYP
	W1vojdVijwg31cgE9Mn7LDigbxswl7zNawbSRhXc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647934584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p62HaaJfonoYZw3saTrCAuKjQSUjWO5SgyC3PQ+HNTE=;
	b=ITwjPmXGqHk4k3vmV2GPDJpG8nmmSCwQpQTQVULGELJf/vaqiGYzO/KoW39hyzgW
	6RdgvAgEFjL0RAMVxrdmen26EgOG2kG4RPFRFDjRzWMj7zeqptL5c2R83By3ao/Yk0J
	63VJ5jaydrlpsRmX+3YfLh3hELV8M4ktO3oMQ2Vg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb08e37a2-2b0d2cc6-4f89-4321-8902-f27b00deaa10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bb47bb5cfbc60a45db6e71abe8a5eccb901b2edd01e7be3bbf990c553ed9e450
Date: Tue, 22 Mar 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647934584
