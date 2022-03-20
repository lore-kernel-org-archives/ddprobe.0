Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A379A29AD
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647779185;
	h=To:Subject:From:Message-Id:Date;
	bh=cn8Z/qloVkM7EAlRF8NG0kBCxE091dw8OCl8v+3rWjo=;
	b=IXUXLUboAHv90va/Y6Ut/5m+0o3SUIMCiHG2mg5w0pS4jl10MBeW6ghHkQCUp9fj
	GhoXqnEnMoVexA8ws6VxYmNuh6RsQXthjUOGQXkUXdszutNXPSSHfXG/yPcMY4S+4DT
	g+aG49KyMFXs3CinNxKkHH+XsQVwFVuUTkFgS/6o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647779185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cn8Z/qloVkM7EAlRF8NG0kBCxE091dw8OCl8v+3rWjo=;
	b=ZUl6FrB1tJ+AbdeLk8yHrDhwP/shbff1eaiPEb93UAZjAuHgDycrAQmFzONcnvmV
	astJ7nOm5GPA/wqjyzg2WFdsvBOZyROqWrPkgnrkXdw+osi4jnXKEU7OVgxuw/LNgyG
	9vuaK69/VaR8MsbK4K03nqvA0f0pj67IFKBQ1Nj0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa74b005e-9ccc445c-85b1-462c-a854-09de0337f6fe-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16b0dac846ef05900f53ef3aa74564dbf7b2a8d4f07edaeffac09bba534aa17f
Date: Sun, 20 Mar 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647779184
