Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023C47B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 07:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655623679;
	h=To:Subject:From:Message-Id:Date;
	bh=oScjeUQXHJP+0iCLxMCEfHP/YEnRvmrWYNMY0VgkGqY=;
	b=QdMMVqEQFAg8w27V9GwHK1cNxvLPVR0HplfHgUGnuFe/Dh2B5o4MgZh//0SucyVo
	yxN6clE/wM76+Gw9UQ7GR2i9oRHe+P/FJh1hADgeKj88KX+2hQtGJNfsiDV/WpsnxfK
	9jiVCeUTdXK6mO0iBPxaq2zJiqYhtrM/oGQyrzTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655623679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oScjeUQXHJP+0iCLxMCEfHP/YEnRvmrWYNMY0VgkGqY=;
	b=fcNi58SiLcff2qqohbkyhtoLQiK5faI1bYFn5bzwnb20P8782VcSpmikHTKaTh6j
	uMfTVO686Jyxx2N8/Yf/kwWXl5U3/G99NYot6oe6xz97M/HGjbairMPSXVpQw5//F77
	H02n61RmOKbwOH5Kmcbdpdr1AhvlY8mGnzapVoDY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817adc7d0e-9856cf26-5628-4dff-9631-ebbb7f545191-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0caab45b2e0df9533e25d5936a3b24d605db5bab914906553816e6fffc0008f
Date: Sun, 19 Jun 2022 07:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655623679
