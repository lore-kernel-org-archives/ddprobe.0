Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572C07A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659952252;
	h=To:Subject:From:Message-Id:Date;
	bh=crX/ehNMjGGEkH/XLJTnZyT07+3qcGFq+PDtWdNM6II=;
	b=Ds8xw3LdIKEK3Mc1uDx3SxfsdgfkIaWwKZxaEjAcm7kgF8lspf9noC9Esgo8W9kS
	6tnyrtJg0auJVx5Ysn+nSo8aWm0Kh7m8HIiDPoYAjoCRkj7dDxylxFat3t4lL2kteWT
	GZ1PBZ3dy9YtT546l3SFkWON5mqV/1KwTPXV9FG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659952252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=crX/ehNMjGGEkH/XLJTnZyT07+3qcGFq+PDtWdNM6II=;
	b=G6Gn0VmiLF/IB2ApWN4OQsUUC+tWMNW3rvZq/gkm2nxAcrDIxACZNJxV1IyXhljr
	+ksHkoXIn/W10zriSk3dEWxeAyDKUmwhXtxcIKG2gxIwxPzT6lJBA/lNAcFgHODNsjq
	kiMXR7k+WLfsTfHnBhVuIMZFe9ve/7Gg5tXJQ+s4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827cdd468d-99de48a2-d8a1-46db-b9fe-e0f6007a6cba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ce164d6f44ad9efe29ed0be73c2271b023d9f0e760b8bbf94e8a7bcf3ec9653
Date: Mon, 8 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659952252
