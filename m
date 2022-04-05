Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473D67C
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 16:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649177398;
	h=To:Subject:From:Message-Id:Date;
	bh=g2YIS1e7dYhL45CPGX0pWeumra03+zQDNG+6aqojGgE=;
	b=EiaZQGm3c+lpPROSY1/Krhwy4pX9XPYh+TWfmjxnp7YxjUvz5Vg6eAmGIDIOItwB
	98YIoZlXsl0AMT6TAusuIV2OBrxoEA1uF4oFlgA5Onx+ZMLfyXltoiZdD9dVSrBD9qE
	LqKYa9uGwGETNGTqiZkZ27DBamb5CStVk5978OIY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649177398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g2YIS1e7dYhL45CPGX0pWeumra03+zQDNG+6aqojGgE=;
	b=S6XT8aDCrhZGjSoQ8XpUut4i1qM+EKZpQ4aCA1RcaWp8N6Q8rMecwHs2/MI/geDW
	yryT3IBT+4BKFkm5QzTZtA/QyPS5VAMjBsPKQ5uqw9wbyHUJcTz8nsMhhN5wPKdEuj6
	/Ew5q3JbM242tqebi1PgoDktPOrsIwJk6VWD14Ak=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffaa20bed-94bfd5d8-ff35-4c75-b7b8-8cf25881ed13-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 155b73a07462fc6d4faaac0e5803245a8c0f384248aea23c3dda7193a7650c0a
Date: Tue, 5 Apr 2022 16:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649177398
