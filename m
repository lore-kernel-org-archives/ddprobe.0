Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FA336AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 22:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657664812;
	h=To:Subject:From:Message-Id:Date;
	bh=JRoG/bHTvyQDGUZ8aaywr8onI5FT2Qkgk8ddn3JDrFg=;
	b=c2H1qCKoQQzKFsklOal+YJB0jVFj+uXBQuv9y7nM2jaolg1jHR0k1NgnZE9xlRtt
	euV6/n/tAS7K8+lkd4DWv8oU9fEBTKP8NVwvkpXYEwGsQ6I/gmdjsw6Tk0RWSX9hRfh
	RSL+ZDoVjCHhZuzdg3VI7FL+S11M1Saei4u0DrgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657664812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JRoG/bHTvyQDGUZ8aaywr8onI5FT2Qkgk8ddn3JDrFg=;
	b=HQx0JD8T2XligOX6EqjZ3SmuAWROr5+Jmw/skJlRn+SpdLCN8ly0u1rkU6GAWVb3
	71cIaZSBhl9tHIm6dLH6SDYWj3I1GcI2sLbG6Z2RECgGwd5T2lJPCJtHmhf8bp+Fk2a
	M7B3JokQ6soDrdPhwObvBQZ7Jk2qri0lwHvKu0T8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f485b4f2-736ea484-b746-442d-a959-4fe598ae5493-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce05c7cdce667e48fb1957ab44946f1a7f29b3a022a7f02ea6436c80e1b85ead
Date: Tue, 12 Jul 2022 22:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657664812
