Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FB242572
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 07:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647759984;
	h=To:Subject:From:Message-Id:Date;
	bh=ZtHMF4DaPeaqbnIAYS6KUXFmA/l/nMVX94BL2DE4Px4=;
	b=d2w3MA8HW9K/it9q3fboNlLtt2XMN4rSdXhlDuH0MGhR85hjKPR0JoebNnXrjyoW
	5U1wY+WUCKpO6NjDCxDqoRfs2djylVoPZNA+JCC+GglOLDE3KEnQE0rTjPbQ/hXZwuh
	vXr3AVYGOgdSlgaS1dS7oZZ5whdzkntTEfnsjf+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647759984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZtHMF4DaPeaqbnIAYS6KUXFmA/l/nMVX94BL2DE4Px4=;
	b=DLdhMoE5fCIlU6sNNMS2C2mL5H5jRww8aP0nOELuN0XbNbIHYdLoY5oyzVe0En6m
	M/RfaIVVusu23oDfESBzxlcvIc+MfQwtCIjz/0PEKTkMnIX+czpa8ZtDfiGDBz6LslN
	OfZuZ4ueGDSqADfoTXK+UEvngsYAF7PtLcXF5pvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6260850-6766751a-b897-4566-a7ab-5c1a3ea7ec35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e39d86ba3c71f1d23c503c80b0c00853b80e40f3085d3e9dd87796d37a6b1d8e
Date: Sun, 20 Mar 2022 07:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647759984
