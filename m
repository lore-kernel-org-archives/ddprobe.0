Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074867E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 06:59:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650956398;
	h=To:Subject:From:Message-Id:Date;
	bh=79abj7A5M7hKsJvL00Vq5d1MrJECTVPm0Y/RO4i2iic=;
	b=A0NqNuyVkmsNN6Szqnh2D+ld59PvcTcWF5DG604qvK6LeqC9qGpfZ6wMG+rv/NnN
	iax26nu7EjMzY87AAKKRRyrVm4BsbzqKLgnOQaX/IR2/E35Gc42Kpk7rsMObMJkBvzr
	j4veJEO0yGop5d1EUY6ONGbA4wzRZk6N14CMjl/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650956398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=79abj7A5M7hKsJvL00Vq5d1MrJECTVPm0Y/RO4i2iic=;
	b=SpfuQrLhaAu1GHUpcBstyF2R054GI1VghlGY8RAiSf2j5SzDp1W6RJ/4DCphnleJ
	R4rXtCyjdOsIQoEm0qza2R7I1fsj0WlHVBUDJpAJ5x/+KWFs0BO+0e2JFOyj/xQBqC9
	16iogj4/tUAh06G+PwYgp8aSJmgreRI0IH4pStfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018064ab6ead-f223427b-d947-40e6-bc7c-7a4981f9a03f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6afaefc1528db29e189cf53346aef786a645aaa59954ab47136991c2214f85b
Date: Tue, 26 Apr 2022 06:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650956398
