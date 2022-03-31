Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 756F87B
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 23:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648769698;
	h=To:Subject:From:Message-Id:Date;
	bh=Rxt1fgicUo6W9EuBOFJsXRkYb1TmIhXQA1Jsuopoiig=;
	b=QwztyooWeHzpWxhp1z2F+vODWxPpy5lyVC5u7DUIqoTbFHjW3nrxrHkG3kYBKIo+
	19lFQVUPtnGtAS20qhIajx6eHjxZqKrBM59o5oXL78ub1Z7+jrvEibRuP6tt0jHN22O
	rRQ7u4OpCGdNA+YJ7aNakn4rrTFVSxOsxqfeqjT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648769698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rxt1fgicUo6W9EuBOFJsXRkYb1TmIhXQA1Jsuopoiig=;
	b=iV5ERIHSiYfM6XkQfhPsbb4NZQUItoTn2SaCzK6J2S+q9awWhNBunzgl3atuidhJ
	GXvVvbW0k99FtHux8xWE/x5+UQe+2bs1YpOLY3TMFjF190QdX334WeNHb4/mgzHIyWC
	wNFjJccu9qK8ZIlGbKtnxcSHwsrqmad7OtzUOq8w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe25509f9-5c7c92a9-8755-4c29-9c95-5e9c2b83bf21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a138d71a36019c5fa905175f3cf2a01ee3699ad96992ac3c6051208535080dff
Date: Thu, 31 Mar 2022 23:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648769698
