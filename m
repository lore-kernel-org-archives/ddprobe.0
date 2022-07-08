Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E97EB635
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657252612;
	h=To:Subject:From:Message-Id:Date;
	bh=LDu1ukxdSKe6phd3j0xLtDvYoYbHReQgkNs/05SYnAQ=;
	b=NrYJsum5VFVOEk8UjWs9cZQkyPH1Jc5qTbu6w1jCCJ0LQk7Br70eVPwZhlmn7hWx
	HwWsjv0AN0DnF5N/+UbpapJSyVg4xdY8p6IHTd8bR7zHzhHCsMCsaouxoNCIBEBkcxK
	Wh8s1H2eYW+OhB51dU8i6AJjMX2yn+LThl+dWnq8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657252612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LDu1ukxdSKe6phd3j0xLtDvYoYbHReQgkNs/05SYnAQ=;
	b=Qi6Ul2v7P1v7k0oZHkieOgRoga3qJowA70X4XlzIdy5V98wjTWhgjkVQ413Kbvcd
	LyAA1Mu67CEXF4iSPMXi02T919mfSfopQPBHBZXCxOVv9g+U+jNu8Co28/0MqcsjjCG
	fo+nu3YyxRXiucWFHAkWO13aKSNwCfdwaj9XtE8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dbf408bf-a0bff119-e10c-42bb-8bd0-e3e61f911dda-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66f051cd81936da1907cb01fd83e3b20f07a3264409dbf325bd8196aacd99ee0
Date: Fri, 8 Jul 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657252612
