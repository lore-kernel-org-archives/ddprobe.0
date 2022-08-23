Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610E02589
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 15:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661268052;
	h=To:Subject:From:Message-Id:Date;
	bh=aNOLxGDGC9nysJOblC2cPLOeJ6oQZOdh+BIkFjSpZUc=;
	b=FiN42WYubs6rVcVKLO6RnDMursGrmvGemRFkanxKkwo1YMNbmb2YyF1kym3jbvLt
	DgakDpVhG18tScf20cOw3QBfsdycPjDZ8cdFw7JdCVKidvEz4nMGGaGY9kVLa+HTPS4
	/gaGpBKM5Jm1pPeTX2BZcKOzPYSaKazTDHIuS8FY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661268052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aNOLxGDGC9nysJOblC2cPLOeJ6oQZOdh+BIkFjSpZUc=;
	b=A6o0xJzKmVYTWzgA+AONYqzv9jqY8xri/kOlAxAwfSywV0609bj18+E66mDvpxJc
	Q4GUkFZKBs1fAwiaGctuWAobzYezWsDf8BxvG1l0/mk835bgoBt9VJDjrksqvnLZ3gx
	nGFpGDEwGGPtCOUr85a5sdb/ywCQf0hQ4nDGZCeg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cb4aca43-bdee7812-ae85-4cb4-b0a2-ccc1d20a4c42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad652af3fcd5cf011c89a948e62c86e1a301a0f47daa01f0e908e24e36f9fd1e
Date: Tue, 23 Aug 2022 15:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661268052
