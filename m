Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB794420
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 18:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657562812;
	h=To:Subject:From:Message-Id:Date;
	bh=jM982TJ19AJ0eWB3sB+1vz6MKgXzDorv93d1OQi3ZiM=;
	b=j+p0oLC4GXB2F821GNN3MqqmjyR/kq/F9rUbeikd9M9h2rkTUoHqIabnr2TRL8ni
	f5DsOZAtUIwgcOTyVpc1VEvbY7mmpWcVaiDuTCJ1SWZ+wuI7hpa8xy1oydKFK4VQQM3
	zNgesJuHjtgaPmfMlyX68QL06son/dX9lfh/iQ6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657562812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jM982TJ19AJ0eWB3sB+1vz6MKgXzDorv93d1OQi3ZiM=;
	b=FvEqCSge3otzmFlKdtrKdloh4Aq0ZuoANFGfxMPYggwpc4VA+Ye+EzS5OWv7DJSO
	eReBjcw0tBpyassfaevtFI+M1kQipbAedSdDizZCp7Kh9N1qdjbvXcbDRF/c3HiQI0s
	H7RlYxBcy0GV4EDMnRfuAZq+jQx6QVpL0rHe8q0Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ee714f78-4b088d7b-0786-4a72-a175-33095d7a1942-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82332597f49682dee5fc2307a692a9ecf5ab7ca9fffcb391ccf9ba499dffe34e
Date: Mon, 11 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657562812
