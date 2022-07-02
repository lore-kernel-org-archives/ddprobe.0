Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A7C1FA8
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 20:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656793012;
	h=To:Subject:From:Message-Id:Date;
	bh=zL3YThKCxswdn0OlpY9O4DmfzPENLVOClKrqn+VZa/c=;
	b=j6ejbacfxtMB91sT0FLIkvZDQDSY43EzuaomPaK4PqQZzSTy3ApzVwuyuzKxneRv
	waaDrCZLGEtCcNiRI85pzVdVExJ72LuYeJIm0Cpc7ao7DMUjkTvyKXtelltwTq4v3MU
	q+Mr6xjYl18MMUpU4IRE5xtkSBSd6eMmkuKJjwb0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656793012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zL3YThKCxswdn0OlpY9O4DmfzPENLVOClKrqn+VZa/c=;
	b=NJiI7685FirhDDBYYrWoNWskbcPs2kVQhQlDdugsPki6n9GH+PP6EdiboX0VAJmh
	RS30XbB28qVOpxeLI/2u7CyelV02nNtCb7pEmDUTAqN6N0rWuJMNqH9V7MrLIKZbuG8
	2hP5CflhSygD8wc6otGVhgr2iab64a0owyWgTIsU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c08f1891-2bd42f3c-882e-446f-8001-b1d7de0c1c07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6982efea30a3bd7705539cc1e58c1f786e238ffde6de3400ee1ebbe8ab7a47a
Date: Sat, 2 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656793012
