Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09F2F2F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 14:09:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649081398;
	h=To:Subject:From:Message-Id:Date;
	bh=WBMKeWdOejy+VvTTsjU4VRUoqUpQ5KUh1e7v1NKuemA=;
	b=VoASFz9HMFtnnOCfOJL+BbmTPTO/WZzrPQMqdW1GF1TMgO0TVFi6H4nzl00ARgOl
	/3jyn7VfKhy338zv+Dhu+vPsalu/YLmJ6bmq/oAIWvzE/YQ6dMQJZpi8DVgksVd7/50
	et9PrXHfos+Io76d5Te7AYmMjM5npJHQXjWzUVN8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649081398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WBMKeWdOejy+VvTTsjU4VRUoqUpQ5KUh1e7v1NKuemA=;
	b=a/pw6KnlQh2f8Tun8f6RWDyJD90KMVjGzJCie6c1p4ZPXtH+hm+IGsm7Do9IHBwU
	11NvH9HzkEsa8eCLbE67jj4Ds/UdygoqOl3NeSGATN/7B1zYIl510n+e6mfADn3RyRA
	ZayUFbhWlFWWcE7dPXH3c/9YSmoe/uRvEGd79eBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4e933f1-f739d0a8-a50f-4eff-84d3-9de250499919-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c43b5ca693c0ddc03a4f022e3cdb0a34b25c62c552ff6c91fac6a28db306a305
Date: Mon, 4 Apr 2022 14:09:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649081398
