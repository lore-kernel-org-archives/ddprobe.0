Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85C9D1FB7
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 01:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647394584;
	h=To:Subject:From:Message-Id:Date;
	bh=J0TkdlAEqS1vge/23c4C0F6C2MTWOWp8qyZsiY1oD3s=;
	b=IAqkJvrjcJT+6e4V6QRaknPh20uCb+AS8hIdG1dO/ovQFt+1OL2c+uZlc9n9eFcA
	4ddPl4xxCcwiB8il+Yf+mnp/mlYx4J3pqi5tReWnN3QaYQ/LMGsoOugQ6Oiw2thMOSg
	K/TKEaZAgrhj1qQnQGQg8kGOAs2gY7T/04XJkIkQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647394584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J0TkdlAEqS1vge/23c4C0F6C2MTWOWp8qyZsiY1oD3s=;
	b=C5fhWvGplrGPl5lsCtmvDePzpH8/M5Gmfh1J1GwadpUzBywVxgwIpj3w7Ez1v5zH
	Eo9ju3aOijgL4wN0cS+VCUcaU8+uy4Xc77Tq4oCs2PK1/dDYPhMg8owFL5boSjJ3QoJ
	qMTYdzr57xxJo24h65IDhvnKukn8eIBt0nzua7kk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f905e78a0-2b62ac36-1fa1-4932-a0ca-d9c945a964e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09ba3edb9e780a5b6815ec0e81efaf3424636cee0937e6ec43ba8a3a7a135fdb
Date: Wed, 16 Mar 2022 01:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647394584
