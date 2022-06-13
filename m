Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1573510F1
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 05:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655098739;
	h=To:Subject:From:Message-Id:Date;
	bh=HkZq//pz4X2YbDcQR4fiQvEiahsIUIWLreFd7wAoBnw=;
	b=dGeuixDRc+/X0kp3ggABSJgZndnqwdjW44L36jozy9ZtQ2U/hilXdTVpeDKz/YPX
	gQ6pgv+jURssrLwSf0sTOvMobiD/E+ybdMrA1hDbfx9tqtMunIRfi4gVgYwn8+mMyi7
	HDEpgDBdvUsqrX5WFAwhK4YcWhcx6qOlkeqPDWI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655098739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HkZq//pz4X2YbDcQR4fiQvEiahsIUIWLreFd7wAoBnw=;
	b=dqfk9ItpCmYgvkM80IwXkhDXlh6GQ4PLRkklX3esWzOHSFY3FYd63VbvdVb3esSL
	E7wX8BXcn40qbxRAPS7y4EoLQSPlvJ5k6h/sL+UiSUrH7cuy27+B6r86mWl0PvXI/OB
	M3yZRm89KJgtLR7+d+q1k+T1BVROUj5AEan28EWA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b928a78-0939ca89-be1a-4fa4-b9e5-c75f89773da3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bc614463f3c3191decc59a12e4cf72b76a84e88f285edbfd13b7f7998a4f66f2
Date: Mon, 13 Jun 2022 05:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655098739
