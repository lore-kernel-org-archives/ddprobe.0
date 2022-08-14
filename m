Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B1F7EE
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660466452;
	h=To:Subject:From:Message-Id:Date;
	bh=i3UWWWBaMVjPulsSnbHLnqDOpQit1zK3FUhfFBoHOq8=;
	b=cZhuRIOteZbzrqBbEL0Hxw5EKh3qi/wh9ugJdoE9nRDdwDqXIBVVN5J5tRjt6ZKM
	dMA01hzhDXy687qt1Mhfiis/6pZzLJXCAFrqBzWshLZt8hcSFB1QromFz/Nf2vPUrTo
	VpAMV8A4rAJLZ8cKxuHwbDAmdWbExsMF+vo8KVlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660466452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i3UWWWBaMVjPulsSnbHLnqDOpQit1zK3FUhfFBoHOq8=;
	b=Wc8AE+dukfgSxXOJTkxz4glP0tI5VYl/zFidlzvqUiEeN47LSjhoTdoAw1xx86yx
	Y/DdyX45lTGcd2hA8iW0EB8T6HOSHD7uCLJBNBIUUvnD5NXVZWxTvxZzPs9yGVjhpvk
	PJiV5kBC3TzDT5APWbDS3m8aobURpl/itM2Tb13E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b835843-3cfaae07-82c1-4951-b597-473b0be6311b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d8ae81b4ca6f54ab22d39dde068334e0a5357bcb971db7463ddb76975335ae4
Date: Sun, 14 Aug 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660466452
