Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB19F7B
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 09:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649929678;
	h=To:Subject:From:Message-Id:Date;
	bh=4Xgt9wkegtgS91DtIiMbyDBfNqjlmwMUNyZeVFrvIVM=;
	b=EvIiGRCxlgXgX4M1ACqrdvmaYYy/zq1puc2zb7lCYOuIxhHW/E+nCXx1leu4qGEm
	ce6IRAh1Ldlr2NGtln/73uPF9U9CxLFJeaz5XYNEVy3Npjy5RnW9+5ZS6F6wacJjXQG
	J4vIZCbwZZbj8Qz+1XHm5dgH3EaFFUs5ZWv6FFYU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649929678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4Xgt9wkegtgS91DtIiMbyDBfNqjlmwMUNyZeVFrvIVM=;
	b=RVqlrDOBMRbfwa1hFUFmnsom13AWkyL+1v3w8Pboq/FRWaugBcaUUiZeqgmy0oTU
	5/b7oLy7fa+3knpsMEhbuNUd1I5aetlYa8GsoeY4UOOaW/WxIbyZFXJPlGsDxSG90P8
	h8Jwy/EZ/wzLs8C2ayJhnxbKcqMHkhaX9u+4SmnA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802778edd9-64766639-b2c3-458c-bb19-817c283881f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b499ae90bef2a941c8b3156f20579fd7c73d4aa4885022183f6a89c63268fd73
Date: Thu, 14 Apr 2022 09:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649929678
