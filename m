Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E32736F
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 02:31:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654914659;
	h=To:Subject:From:Message-Id:Date;
	bh=Dvj3MXkd67iZ4YJO1GvXtXFmruFR7dxNgwaCABmkDHA=;
	b=jpg6jkqBJo8l5Z+4qZ4UvfDFw6ascKp5QOsZqdhWvp0bynrr5mLxkL+EA+GIIKe6
	/nrtI/LxiDWDLV7wxvcEa7c6KLKPlAkQjKlif4q+P2OuMgDyr94Q5nFcgqhve5aawkj
	WHfC8AddbUoCKOdon/dzkfh2yXzt6D0t8B+cAPDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654914659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dvj3MXkd67iZ4YJO1GvXtXFmruFR7dxNgwaCABmkDHA=;
	b=Cy6fCOBelCjfWY1ISYpaMXUGfwjG58Ue0QXfcI5T3sulC1PC+nQUTmzd6pGaQuyO
	DWYKnnbZ8ZkjXYkUYo22m3AjaEYCywR+T4N0vSZNTkfI15XrLkn0NNaxOifBJ1pCtak
	iUlrwSa0yUEZ5DAIVdNF/iFaNUUA8Gp6GNLUkg9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815099b3d3-b6365730-a21a-4384-a805-1e64ade88db4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9537d136a0ce6955c5e32d4c37bb9d3181db1a0c8bc5537ded7629f4c01b9ffe
Date: Sat, 11 Jun 2022 02:30:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654914659
