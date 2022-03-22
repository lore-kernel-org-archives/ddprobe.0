Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5074E7E5
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 12:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647953484;
	h=To:Subject:From:Message-Id:Date;
	bh=AB7iwNnlOcA5qJhCY+/mDBWalbm5H+Ot+nUZEwSYzW4=;
	b=HZ6XpcowOgBLl09buIgt/ObsVeI+9r/elYRNuP9sxBvwps2T5ey3Q7W3rwaZASXN
	gmkUED+81g3e/6icJ6AJWuPxRslkcRXT4NDsGgmCouzq/82qqBmA7sEGjyGCOwHWOIK
	7UoItO5HyQgbzaf7ShlJESyskAjvPrPmwRXgtQFA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647953484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AB7iwNnlOcA5qJhCY+/mDBWalbm5H+Ot+nUZEwSYzW4=;
	b=Uj9U0F04oztGiPHcRl74Ntzbtmd1x3qsqo1i6hZEhCHtZhmH5+aqP9ndjLIUK9Ll
	2YxWbNHHEZLCAGUlsuxCuPYb0XhTr5uECJ9JicPFId/6npUvsQfqlr0S2Y5HtAvkkzG
	3P8rAoSL5pSbiLLpadz6C74FckHi9ULmuJVm2kg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1ae9ba3-2ee79b50-6928-429b-9bee-30c4c84d7958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 752d7413e8949a1682f8128e098e9a78e0c97426b3cb379bc0994661811bee6d
Date: Tue, 22 Mar 2022 12:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647953484
