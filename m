Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A33D4681
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 17:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657648613;
	h=To:Subject:From:Message-Id:Date;
	bh=rYYlGg6OpR5PhU5M2GLAPUqJgPKmvCY6/hXAKj7pffM=;
	b=XThzW1EunKFenvUQuyCbtICAyWbJ1njEdFqgVvsbl1KCaGychGOO7VE6/envmQMB
	SZ87Lgfx1c3eYry6DQ5tJKnMAAHm23wV/JfeMhajSdk4OumV9UdFcl/LMmVaWAdltWJ
	qDYu6ZrRhIL1Jn6q185EjWiefPVfxRUwioJUNZaE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657648613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rYYlGg6OpR5PhU5M2GLAPUqJgPKmvCY6/hXAKj7pffM=;
	b=XzIQMp4ZH/7bMNhO+j+3RuorQxy4joRB/06lF0+lBb/ZQ2WRSyuAahecZEJSKVhz
	OrMdIgdDdmi6itN+teIwd0hYPTiGyA6ptCtkTLbN1lulVmwKM7OyGL5lvgp5iD3fecC
	krtZ+DJXDOEBfYvMs2NDNLh2O/0TksPLl4dhJRTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f38e83c0-207d6792-a64d-4182-92d1-675e65a664b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6c025060b7dbbc820e289a9ba5b9684e99757112c30022d191ebb972ea067d5
Date: Tue, 12 Jul 2022 17:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657648612
