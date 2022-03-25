Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 109A24689
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 00:41:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648168918;
	h=To:Subject:From:Message-Id:Date;
	bh=aozoo76L2rZrTEkR5xACwexrGCQBe8YfCpoocT/r13s=;
	b=HwkIugsW8akQ0shP+CBgMOtNSWQSNhM8gCv5LEeISQb29KQaeEeUDGWzor2SmOLR
	rP+U8yLHQsNy/nmy9b9EWa7L9dQLAjOF+bDFGB5sRN7uEyY7FEg7Y+MEBWsDnUr4e6h
	SNt6lUouP7h22Rnd4H+wGAm2SGZhnBh5DDjxXPXk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648168918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aozoo76L2rZrTEkR5xACwexrGCQBe8YfCpoocT/r13s=;
	b=LcyDyfa1cEmyvuF+zYno5BUf/FCSGNQIvKNV5ja0gdD60UuHLy1qXHXxixF9toaN
	U7TnV5PCv1Mv9hlO/hiAspZpPCWjWxN4cpzxLgU2ZzstOAdLfYpS54W3c/Afc1Z0sdL
	QT5e9IqN+xxsIEubHe+GgaesMGGXwysqN4hgh2vc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe85dd26-7c83cc19-4e74-416b-8cec-b6d38bd57fc5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4178772bdd73b5caf85e720ddb236d1a667b3afa8a9143b794b8e5ca2a02c002
Date: Fri, 25 Mar 2022 00:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648168918
