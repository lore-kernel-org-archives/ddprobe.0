Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 487D57E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 18:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648145038;
	h=To:Subject:From:Message-Id:Date;
	bh=S9VQujpO3mt/CXKbAfDwdzZ6z8PYO89sjEg77H7Vw1g=;
	b=PjalJbP+ioiIr2F5djxxb/XU4FQaPHkxKum9aJ+UkhcYSxRooq5gwXmQI4FSKn5Q
	faz1ZFI21shg3ocwW2E3MXLFoNmiQJEilE3tEI70ipNekfF/iYnsgKsYGzdE9haikph
	ptseS5scjiZh15QgqEolfYOFRhoPdCFO7YOLcKOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648145038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S9VQujpO3mt/CXKbAfDwdzZ6z8PYO89sjEg77H7Vw1g=;
	b=Gc5Vc6bsSlCMGfDDzKI6LaEXCc7QgzI6zgX+A56iFDNlRnPorTc7nHkJ3iZi08yE
	HNI9iRA5gslucKGIsYYzrhP7MzXpV+VF2dT0QtPI7JMNKkUUw2QvS1mVoQ5jUE2f/wW
	w+AtY8/RaIsMuiQVnceAkkCZujTJN3H/GMjBt2q0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd197be2-b37666d6-ab18-481d-a2fb-bda6240eecbc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad6e9d7901362a2b551e03a39640a5dcd84e89e429a8df7483892ccc9f78d58b
Date: Thu, 24 Mar 2022 18:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648145038
