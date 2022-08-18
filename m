Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717E729AD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660818052;
	h=To:Subject:From:Message-Id:Date;
	bh=9o+q0jG9Xs//9lSoQ+Wl2Oz4h5uO/63/5iSI2ABf858=;
	b=LAr5/CoLbxy35BetQD3yaaB8Ek7cDeDGVPrvMyTLvCE3lzQiAL+8DEvQ1HFfsEzW
	OgKvb7ji8frHznpfXTZGvbv9LbDUPXhzXlKUr8o6EClD14NCWQv/oz6lDN6BhfXbeJm
	IwWF4N0Ofv2UEN2UigxzG0v4iUFaXRRAnzO5FCuE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660818052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9o+q0jG9Xs//9lSoQ+Wl2Oz4h5uO/63/5iSI2ABf858=;
	b=M0MW9O8BwuCFEhakHaGwQS6I0ml1McHjh5J7RSjzTyXrvBjEAKUwg7jAfvpV3Knx
	vjkoKvOq0PADr7kr71aGy0hfvry+k9p9mdFL9tq3pgj5WC5UdW9k7dkPDgq64bzWgH7
	YQ7ojZAzbGzfFTPDvZMkvuPAJvV5Ji9ZG2QdCvfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0785657-bb55dcf4-cd65-44a8-aebc-f111b685d86a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ecf8ada8045dfeeb0b04005b2dfe5df75ea32e90cfce2cd4c2d33123c0993caa
Date: Thu, 18 Aug 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660818052
