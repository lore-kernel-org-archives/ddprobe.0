Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970877C
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 12:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648816198;
	h=To:Subject:From:Message-Id:Date;
	bh=dQ1ZaXljdZ/ayXLZnM9yTn6O/LtOPIcJH61RUPz0PfE=;
	b=ktskvZUpYRzchGvsKO6uNpaMGMWHTK6Ce8wkCRAwgWiS8AxBCR6Qk1pVRPeRTqNA
	ksEXbHy9eqIyNdt/GrtMDhhRKKpcfP9e7ky9se7ndAqilDjTvzQn0dP+1/ZG2MUX6/3
	76z5fghndGu87pE0j6xGbnT5eXvwIh2oSZwvN1rk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648816198;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dQ1ZaXljdZ/ayXLZnM9yTn6O/LtOPIcJH61RUPz0PfE=;
	b=REPfLOxDDMtzEEVUOHkRe6UqG0M4q6gfnYoGJfy3Z9Qrz6Hq2eV7ui3eCviYWH0M
	8niRJdxd89BzUIVmZRKhKCyVwllpAOoMRgkfArrvBUZySoDmCBnYhTyzqY2xEKJIeWU
	saw5X/Y2p0G7WeOIqn7wUFWOKe1WNyE3q+SeVfkc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe51a926c-03041097-c4c1-489d-91f2-49f107eaebef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddafd1a52cac32631dd10b4467a651bcf24c33741fc35551133dc31b7b3db3f8
Date: Fri, 1 Apr 2022 12:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648816198
