Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F24A15A8
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 09:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653037499;
	h=To:Subject:From:Message-Id:Date;
	bh=Wj0R1YQLqIpIN6sVLdOFPbeMwWcvePjnZ/V868Ni3oU=;
	b=gLqUbFXqqQbvrfCGw+8YwcC8IuXD8Q1qjRCOl+/smqg11NhARQPGYY4gjVWJe5lO
	dyhm/TkPRl3t6cMxBQitekngJ3mF4PyhSKrmYRM2ra/2MZWcCYAoSbn+g9Dw8+jx69i
	C56PWGM0gE0R3NdJCjvNnsKNQoGoTBCln5HTORO4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653037499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wj0R1YQLqIpIN6sVLdOFPbeMwWcvePjnZ/V868Ni3oU=;
	b=ILjgaFjZUFRjzvZ61r/a32JwofiMXZTs3YOkdFwf8m5DHAXYlN9gI0TK2kfbNILZ
	+agxWKay/GN1hQyG6P/wisWOaemvtDZyUA/jAb0GmzCWPkVf+3gcBCLCIp+BZdUONiH
	m8usPy4sGqkTlDKqzLhxprj5g6R57f/AA20EvkqA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e0b683ac-c32a1657-f39b-436a-a545-fcb26b21c53c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffb2905113b007d70e1fd1179959864fbc534cfdbb67c218d30dc3cc36c3123
Date: Fri, 20 May 2022 09:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653037499
