Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E1F1841
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659836452;
	h=To:Subject:From:Message-Id:Date;
	bh=GyZx9U6EfX5uLE+9EJlCIWN8S785TpgwIgSSLMVs1TI=;
	b=UNw6e3l7byCymaUDI1e22Fu9bK/q+GOjYu4Ro2jkt38hjAT5sfliR7r4tCivkPxD
	1ro07PE+F83GhA7BN7Xi+W9pR+bmzBiDfFbYGJamQaQ0LHcsf4kKInjZ3Y+emXb7mEC
	DWaeAH3ykPTGDADCYyptaDYThOYOvv202Hjn9D3g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659836452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyZx9U6EfX5uLE+9EJlCIWN8S785TpgwIgSSLMVs1TI=;
	b=dzvYEuWiMxBPZeYvo8Epxd1zSc+uZ35j++LmP3eCRzOSZ0vtkew4M8QRxkCoxOge
	yIPuwC2RCQIg7AXFHr4wvhb68uf6HyhX750uE6SIAZssm/xKntyxGbOQ+fpw9BNHKi+
	zpIR+9XDxYYzJ5IAiTPoJjrZdcCtbAq1HgishXy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275f64ef6-57531001-6658-4f59-95f8-ef49fb5ef77f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f86924618bfa756a14da6cbe701aa236a9ef0a04967f4add308982e5abde029b
Date: Sun, 7 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659836452
