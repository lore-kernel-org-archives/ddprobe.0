Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5238A3D60
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659971452;
	h=To:Subject:From:Message-Id:Date;
	bh=BcLVhBrsla7QxKe4VG1SvbZ9x/Nxvm458CLwR4ix8S0=;
	b=UFyFuP7Lq58kha/WfhwOBYNPuDuCgAJhTv75beYwBuz0gmGlcxldIDdVr9ColViz
	+NHD2Nis/UjwN8YPPXRpyz6a10tqEObJAYQL60DFfnzDU4hJv6BpWUI9JifqZ6612T+
	JiBD9TusfoQd+9noGpawzBg8/1UKbEp8KkAhCih8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659971452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BcLVhBrsla7QxKe4VG1SvbZ9x/Nxvm458CLwR4ix8S0=;
	b=LY2BzZhMrpTqjufg4pqH7s+PzTic39KkK7yY+pU06w34WRQeHVhKQB75BtqPeXqy
	zouYv4zhEKL5vQbQqgdUrQSarzNFE+v+KGNzksbBf/ot99yOBOAQfFgOU1SCaKwWSRV
	zP99stwxEQSpzp7U3UzHgJ91j1Q4a4eQ4xkTqAgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827e023e78-128a4b71-5240-4142-9963-803c383006dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4271c526f60dd436e8caecf64eab9d7e7f5a819ffbd56a2df8de07476d92eb6e
Date: Mon, 8 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659971452
