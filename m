Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAEB046B3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 15:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656950212;
	h=To:Subject:From:Message-Id:Date;
	bh=Lro0xFDzSAM/lD8JoTIq0SG9YUA5zyaSs5D5PDxKHXw=;
	b=kF8SGCZ5VL6ITuxBwuAX04Z2JxAzHUhyY6duyPN/p58jnf0GCsLZ6MHMAKpXKGdD
	HZ75pdOAQpcZuSq5ZDOP2aHGn4dvqYHTFmZQoH5Vz3qoUN6e6tsqvcHfKIUzu3+vIEg
	QbjEDSa2XvciNupbSuvdaSHgq9WzRQleu4bUxo5I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656950212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lro0xFDzSAM/lD8JoTIq0SG9YUA5zyaSs5D5PDxKHXw=;
	b=aO57valFvng4sg6P/CzKBT5Kly2O9TXXKu02+YY95y+1dGoXwN9ci0+xI4MbWxmU
	4xttHJ9tHVWWEqZV16yRUqEVp4xkxTDtHxZPI91Sasrl5dhqONVGzTuL20z5u/b/UbX
	pzpleaIZfRuNwVt4jb/T4RbCV6T4/R1qdyzGbcVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c9edc6b7-fab39d59-29a8-46ea-b974-6ad9872d4a86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b896e4472ffb726c6ad3d5045eb6476d4e506c23e18e0f0eac1d089248f6922b
Date: Mon, 4 Jul 2022 15:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656950212
