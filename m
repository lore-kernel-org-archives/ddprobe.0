Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8CF15A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 01:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656898612;
	h=To:Subject:From:Message-Id:Date;
	bh=YdRw4BVAWkWDE63CEmIYZFRn4+fujFLZIKp9qts74bQ=;
	b=LklqZDyAdlNsTdsegD/7sxo5Tcz8EbHh4Ufq/VgMZRYnyUyflD8SytNhmZmL4OuQ
	alHb/MiG4Fw3JS8tjc0WE+LrtsjB8fuQeUNo+wgkWdf/NMmKOS7IH6p/kx/tAnFxBZv
	ceeKkL9XtsSz7yCqMHbuklDV/w3hQz/WILrP+L6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656898612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YdRw4BVAWkWDE63CEmIYZFRn4+fujFLZIKp9qts74bQ=;
	b=knXJt9E1p47wLDDjf3pVbvfDUs6HO9B6EnRN9MUfPVtWcw6oIBJRTtBnIMJNeGi0
	5Y60oPEdA7FoSLdwZ8uF8V0zoyTgo4ieXBjExt6s5oWO30deRi6yEIMbfrVtAk6z00C
	I8v8nIvCVFUJba/WBeZu4W715CV0VN+CrUVRdeHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6da6c8f-cbf36b5e-6306-41ad-b3fe-b7da79aeb598-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78fe5144bdeb12f32843b30c5707cd0982ccc9833f8019514f747be854e22008
Date: Mon, 4 Jul 2022 01:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656898612
