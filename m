Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1104681
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 16:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657729612;
	h=To:Subject:From:Message-Id:Date;
	bh=8ZUEtZ6R44UZHYoivR0nUcTQmS7DvPP63vof9PQKsVk=;
	b=KnZ1YtB4eGN62ikaonHgBq2a9QWUZlKGzyTK/Cv0glpIE3ru2nAxqrzwCWPeGnOk
	wNOLTmpTiSyLu8GXxbbi6cBRAx9uQRtKAfl56bRKyeq5tWRbVrUUXlVcuEZbUJDL8S7
	pqZ0rJGF964M3WRAE37qvz+LVhYFQWGazyJ1UxUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657729612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ZUEtZ6R44UZHYoivR0nUcTQmS7DvPP63vof9PQKsVk=;
	b=Rfq6HANs/xRq3HoNYnDRL7GS1O2fJGjsrTJqGRtalhEZIkgjB6YUPVUnJ5N60QRO
	kr4H8I0oOP/TQNkPGoBCeJk/5XhlMQw+IKy2UNvI/sA8XltIdt8LOjO6g4YZapZKqvL
	tPPY5sdjD0vTowRkB/7da6F4V+NuLWbKBi0/CXHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f86279fa-311574b1-64bd-4332-a459-e90f300117ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3505474943ebc001593b4cc6e02c59560ca67a6d0bb0616b86307cd3d68378df
Date: Wed, 13 Jul 2022 16:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657729612
