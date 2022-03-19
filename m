Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64F68161
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647708084;
	h=To:Subject:From:Message-Id:Date;
	bh=VltyAjWtqdJF/Yc93d6QcAS+n70D3XYmMBqgYsFWECY=;
	b=TRlQahNigyqF3UF1MFufji+A7Yne2PDmeanEFY/OmZORILLJhZNo2rzVu9Bda8NW
	cz4yEZpAHRrOI90DtOLOjT6Lb6ELXdwuW+b+po3raWPdADQq+Z5SziQp78MImMzdQcp
	3icOqNvSWR9uxafqaXtiJj3MiBv/gqWhYZ2S/UHM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647708084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VltyAjWtqdJF/Yc93d6QcAS+n70D3XYmMBqgYsFWECY=;
	b=bxk++l5g/0lyDZPZbZDdYJTZKNBcX5CmyO/qr0TsawKTlb0uCBZSlkKEewpZqQkb
	BOOFHK81R1ai7cXB1mj2oLQAo7nL3o2UacKr0wX/XTLTfrxTO7FzpUroVYKZtB4v2rp
	cYwr/t+7nHKK3LEqnjXmxTaxgqVe0frGGN5uxyRA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa30e19f0-f8ab9ca7-a088-42e8-87b0-3a25e0230110-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d5f6be48af3dc23398e2ac18c68f0e1cafa38de1f957b6c0c0a15e925814fc32
Date: Sat, 19 Mar 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647708084
