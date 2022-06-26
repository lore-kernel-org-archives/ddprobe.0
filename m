Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1BA17A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656209212;
	h=To:Subject:From:Message-Id:Date;
	bh=15T45PeuS6aa7YRlTmx2r3Qg3lZyveVisqN+C5VbfsQ=;
	b=gDECnhwEnoSO+VSZ8+llI7wm3oEE+jwPYO3auJxadc8Kzpk/k6N9X7HA8sPrXeHZ
	JLCGLlpxbQ6b2Y/LkLv7sqDmrHHTdYOn8w73arprQ72VGB9SfCmVHPFtHnzwzzSLrgw
	qk3WF7OYPDBNA/hdiQkw1mXVUUHOtYZj1rWqe0qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656209212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=15T45PeuS6aa7YRlTmx2r3Qg3lZyveVisqN+C5VbfsQ=;
	b=kbZv7Hsc6QBqdpSs9XXHTsjjpC0XorVBgVltqi3Ml6y6s2KgI4Ms9PbtptrpVY/7
	QnA9WfEhup/UaS/tYTOKLpTC42GR6Rhri4kASc+WopPrkW2cHc+PTEjr7dCqZ0n3wCN
	cvf488L5eDjDPi1DglXieANG698M1YNL7U6pg+Bk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819dc30383-cf21b483-c8bb-4d22-9e71-8c9ad8ba8261-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4427f631afd5301180723a183dee9b93dfadf79bbbb9f54628e66d0d5ab910a9
Date: Sun, 26 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656209212
