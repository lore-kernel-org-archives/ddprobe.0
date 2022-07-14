Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC1A7E
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 20:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657831012;
	h=To:Subject:From:Message-Id:Date;
	bh=m42063ivcRp1HYKa5y7pHZ4TUf5NL6iMUFdYaXwD5Ko=;
	b=ASLliliyKKOVOuW/UdC23ZO1SZ2tLw53a82VQ01iBD+rpb8+V/jf9+d3lUPzC4x9
	Q9Lmcpesuq4nsZVDB4EipWUO0tq6gudK1/PXBqhp7SZi4zs7qwJ6rmjEZzCmj0Bjg1H
	At9AYdgem2e8n3LE98LUZ3NxcJUsG+A0W6SvOT6Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657831012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m42063ivcRp1HYKa5y7pHZ4TUf5NL6iMUFdYaXwD5Ko=;
	b=YwCN62EJCcon4+nIYMHQZZy2xQhKtryL3s+wyYLaV7Q7blNuPXHTSjG4sLS49Xno
	eM1owhLNL6KvsNYlGNcFwF4+smFvmmp/HNyNpb4cE6dR1WaPC+eBq0IAElkOAgRfhzA
	81vB2gzKYkmnGxhdlAE8nED+AExs0y62L9P3DTkM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fe6db7c2-3bea164f-2508-48b3-aa31-366eb6174604-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c739a869e4df22825cca339ad5e05fc506f1358a3abf6c4693e677487841375
Date: Thu, 14 Jul 2022 20:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657831012
