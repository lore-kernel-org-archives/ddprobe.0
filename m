Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 042505393
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658258812;
	h=To:Subject:From:Message-Id:Date;
	bh=2BZy/dxhNzlPOrIIwz3SiFiOzw/6ujeJRDbUJ3lZL/I=;
	b=RS6Pmkg4Re2T5n3/CXZukR7ZEME2qeMb09LMHAf4nUTO5OTm3ZkcvRjeHZUNlsf2
	9L11/ivmx6lMlGJeWNRL57knPiCJuYhHASv6rTpl99+3+A0phPW3iLITcWHde9ELYfw
	3Wax2ZcRido+dgqhUQKdffMQtHw1DF5c0wcZM/p4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658258812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2BZy/dxhNzlPOrIIwz3SiFiOzw/6ujeJRDbUJ3lZL/I=;
	b=A7SSet4vI5YFOOSllUpKKfnT/XLRQgHlLyNjhKBl6YYAkf97ZGz8i01AX+kzSw5I
	cruALkxjAliKLeiKiqMq3jsmGRjSyzNG/0IOYYFM5LqZAzsYvQ+vci00MhknOtk7X0c
	FTv6/MmL7xfq/NUkAXSnGsCRUoUKTUMc2LVMa++o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018217ed6daa-41d3485f-90e2-4cb3-aef2-fa158a6deb76-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab6b0083d34cb7e42a81e7a3365e8b90867e2c5a63778dca547cc2608e62b287
Date: Tue, 19 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658258812
