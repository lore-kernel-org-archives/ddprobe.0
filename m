Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65DC52570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 18:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649355658;
	h=To:Subject:From:Message-Id:Date;
	bh=R+OoQo3WMEOEcDLjpYKwFENAmBr3O5GZxee4tl3Dv0M=;
	b=lXQGBswLZb/P6t8bFm7/IiOOj+JleyGBYDYXYZja5IeQKdpxSJNRJAdQromdjvNj
	RdKFoYKOdmAUqKmUnR5+LVDVJKlvh991Guhliqj9jq2JROIDUHKmuRwaDMceJ08Byaz
	4nCMDDqiGBgCs88VcN2Q6cy/ujgHb+C/3vyrB0ss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649355658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R+OoQo3WMEOEcDLjpYKwFENAmBr3O5GZxee4tl3Dv0M=;
	b=GNUKwMWWCX44AfeCIWtBTRwos4DBGt0y0oAXdAvZdpHvlDXhL7wD1zMVoSkY4Vdg
	tdEc48JwapuKgTRLJxw2ZWHcVo7NfI7U3jbQ5fwQnX4nxTFmXRDS14evri+QAS5MnJw
	YVGDpVNXinxomRAfJUAFHNpjKPCAQKECZ7iwnD/g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180054214fc-5f88718b-687c-4a2d-b029-195ceb5006a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 976b421bd067bd729e6b509fb48a0075499859674b83c664fcdb8dbf89e6d041
Date: Thu, 7 Apr 2022 18:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649355658
