Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E8B87E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647952284;
	h=To:Subject:From:Message-Id:Date;
	bh=atotwezHx7gh8L9iTtUY3TSbKhicEJI7BnLShUyMUiI=;
	b=iMB0v31988dlY9u7+E7lN9Bgnc+LxlvPgT6SmEUB2ZVCo8jZFwLlvazHZrzSPEQ7
	3hfjIhDsDrM3SoL4o6/PicJDJaypx2enXrRku9RlZMDusp/9Wy95buzTIQBCb3P/5vC
	QRW6EkcUGi0XoH9zEjAubb+3AcMO2AvygRi0lO/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647952284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atotwezHx7gh8L9iTtUY3TSbKhicEJI7BnLShUyMUiI=;
	b=e2lkWpvf6xBzxMGp+iH0Q/6SGTntGww3rYRDoXIBdRcvTlbKWNHvslB+XsyF4jVf
	nJcJLDxcZ4n7rD6Uk6rJKOXDfmSAUTd5d4PYPG8mO9PW4BfMAHQhS4i328ttRR1+0D1
	BwMlA6t8hVtZJQuTEHow22bJjNT49uhzqVepvjo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb19c4c45-90a7d854-cbea-4bea-8373-9e317eded7cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5b72c51c658faf4a8f660f100c33eff4bb63fd478724b92ed08bdbc35a44bc4b
Date: Tue, 22 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647952284
