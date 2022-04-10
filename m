Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CA10EA1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 04:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649564878;
	h=To:Subject:From:Message-Id:Date;
	bh=4kuzOktw3FWfa75rfIzSrX/qPxRRlhtXkKKHALKkyU8=;
	b=Aa3xP1+BkyqGPu3sbZCcUkgyWEyK9mYdxvnZRVUB7MSbA1amGJVSt9Esz0RZxJ2P
	zeD0j2QRpKi8FnVdZAWQMHEEXCbXdQyw5q1V6TQbomdhBC2/lfwDZ7Myb2k4Vjs8z4S
	XEbqrNSqNVX0MIukZisOumd24lb9c2Vz6GGyVgnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649564878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4kuzOktw3FWfa75rfIzSrX/qPxRRlhtXkKKHALKkyU8=;
	b=YIK0YG4r1JXwaIfoUBWtxmt888+ZRnpVlDqLL/foRDl2gocRBu7/RCXD3/e4JMH6
	74vfY6Obx7MLtcIy/P1iwoTlEVXg0WIuc8zMhwT48WthEnLENyMrJkLysxy4LUZUmq/
	BiqafShnHp6ZkMjupPwpTzOuoHI0dTjyDtBvm4fI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018011ba8638-8d382d21-fc31-4820-a47d-26eba56a58d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7f1305b6f96aa89da21bd40e0a8eced849e30f5fefce19bf8a3b0f0925289c8
Date: Sun, 10 Apr 2022 04:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649564878
