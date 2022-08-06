Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96219EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659752452;
	h=To:Subject:From:Message-Id:Date;
	bh=D/s2Hl7GF33JdfbfoPUxxUGCXxuggMkKAyF513snaO0=;
	b=UQkjW0VbbGtS/0OGliPV5mUwPcY0kYiAnqYJXMVbykYEJTpAOiPJCRrjW8rmzxqe
	54GAVaDPzfrrAfXUfIDyuSIJb0cCDh6bmMuw3gax5jtbPQAsq6zr/JGtiIJgVaMBIKL
	IcwtgBn8RAoA4xOfRfVqCxS5/Cy9i9ooVQvt7+aY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659752452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D/s2Hl7GF33JdfbfoPUxxUGCXxuggMkKAyF513snaO0=;
	b=IR8/MEhHtWVEVz0gJgPanCuW29bipAj2oxt249UTladE6xF8iLXrA//L+I5+yHZd
	okod6zNBpoTlMRA6qWDeikR8ft3aJGis5fOVkA9tw/rT0F4b3nUjJJDQ9nEWENnTkT1
	wyNct4d3DuxjqJ5seKjmMR5BFv/Sqy60EmuMZT+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270f4922c-a656b560-a613-405f-bc8d-2a44dbf35e6e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: defaee0c0e6e92e829f5bd7fcede6d18cc436b4d3bd6bea486b94a0ea5967a43
Date: Sat, 6 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659752452
